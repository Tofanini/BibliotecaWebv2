using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using BibliotecaWeb.Models;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



namespace BibliotecaWeb.Account
{
	public partial class Register : Page
    {

        protected void CreateUser_Click(object sender, EventArgs e)


        {
            try
            {
                using (var cn = new SqlConnection(
                  ConfigurationManager.ConnectionStrings["Biblioteca"].ConnectionString))
                {
                    using (var cmd = new SqlCommand("PROC_INSERT_USUARIO", cn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
						cmd.Parameters.AddWithValue("@nome", nomeTextBox.Text);
						cmd.Parameters.AddWithValue("@datanasc", datanascimentoTextBox.Text);
						cmd.Parameters.AddWithValue("@rg", RG.Text);
						cmd.Parameters.AddWithValue("@cpf", CPF.Text);
						cmd.Parameters.AddWithValue("@email", Email.Text);
                        cmd.Parameters.AddWithValue("@senha", Password.Text);
                        cmd.Parameters.AddWithValue("@confirmacaosenha", ConfirmPassword.Text);

                        cn.Open();



                        cmd.ExecuteNonQuery();

                        var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                        var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                        var user = new ApplicationUser() { UserName = nomeTextBox.Text, Email = Email.Text };
                        IdentityResult result = manager.Create(user, Password.Text);
						

						// For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
						string code = manager.GenerateEmailConfirmationToken(user.Id);
						string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
						manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

						if (user.EmailConfirmed)
						{
							var resultSignIn = signInManager.PasswordSignIn(Email.Text, Password.Text, false, shouldLockout: false);
							SigninValidation(resultSignIn);
						}
						else
		{
							ErrorMessage.Text = "An email has been sent to your account. Please view the email and confirm your account to complete the registration process.";
						}


						if (cn.State != ConnectionState.Closed)
                        { cn.Close(); }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }

		private void SigninValidation(SignInStatus result)
		{
			switch (result)
			{
				case SignInStatus.Success:

					IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
					break;
				case SignInStatus.LockedOut:
					Response.Redirect("/Account/Lockout");
					break;
				case SignInStatus.RequiresVerification:
					Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}",
													Request.QueryString["ReturnUrl"],
													false),
									  true);
					break;
				case SignInStatus.Failure:
				default:
					//FailureText.Text = "Invalid login attempt";
					ErrorMessage.Visible = true;
					break;

			}
		}
	}
}
