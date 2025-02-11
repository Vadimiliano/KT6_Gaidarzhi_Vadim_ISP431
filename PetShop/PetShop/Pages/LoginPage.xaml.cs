using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PetShop.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                StringBuilder errors = new StringBuilder();

                if (string.IsNullOrEmpty(UserLoginTextBox.Text))
                {
                    errors.AppendLine("Введите логин");
                }
                if (string.IsNullOrEmpty(UserPasswordTextBox.Password))
                {
                    errors.AppendLine("Введите пароль");
                }

                if(errors.Length > 0)
                {
                    MessageBox.Show(errors.ToString(), "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if(Data.TradeEntities.GetContext().User.Any(d => d.UserLogin == UserLoginTextBox.Text && d.UserPassword == UserPasswordTextBox.Password))
                {

                    var user = Data.TradeEntities.GetContext().User
                        .Where(d => d.UserLogin == UserLoginTextBox.Text &&
                        d.UserPassword == UserPasswordTextBox.Password).FirstOrDefault();

                    MessageBox.Show("Успех!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);

                    switch (user.Role.RoleName)
                    {
                        case "Администратор":
                            Classes.Manager.MainFrame.Navigate(new Pages.ProductPage());
                            break;
                        case "Клиент":
                            Classes.Manager.MainFrame.Navigate(new Pages.ProductPage());
                            break;
                        case "Менеджер":
                            Classes.Manager.MainFrame.Navigate(new Pages.ProductPage());
                            break;
                    }
                }
                else
                {
                    MessageBox.Show("Логин или пароль не верны!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                }


            }
            catch(Exception ex)
            {
                MessageBox.Show("Ошибка!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);

            }
        }
    }
}
