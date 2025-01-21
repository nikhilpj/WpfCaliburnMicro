using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfUI.ViewModels
{
    public class ShellViewModel : Screen
    {
        private string _fname ;

        public string FirstName { 
            
            get {

                return _fname="Nikhil jose";
            }

            set {

                _fname = value;
                   
            }
        }
    }
}
