using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfUI.Models;

namespace WpfUI.ViewModels
{
    public class ShellViewModel : Conductor<object>
    {
        private string _fname ;
        private string _lastName;
        private PersonModel _selectedPerson;
        private BindableCollection<PersonModel> _people = new BindableCollection<PersonModel>();

        public string FirstName { 
            
            get {

                return _fname;
            }

            set {

                _fname = value;
                NotifyOfPropertyChange(() => FirstName);
                NotifyOfPropertyChange(() => FullName);
            }
        }

       
        public string LastName
        {
            get
            {
                return _lastName;
            }

            set
            {
                _lastName = value;
                NotifyOfPropertyChange(() => LastName);
                NotifyOfPropertyChange(() => FullName);
            }
        }

        public string FullName
        {
            get
            {
                return $"{FirstName} {LastName}";
            }
        }

      
        public ShellViewModel()
        {
            People.Add(new PersonModel { FirstName = "Tim", LastName = "corey" });
            People.Add(new PersonModel { FirstName = "jim", LastName = "Han" });
            People.Add(new PersonModel { FirstName = "Lee", LastName = "Han" });
        }

        public void AddPerson()
        {
            if(!string.IsNullOrWhiteSpace(FirstName) && !string.IsNullOrWhiteSpace(LastName))
            {
                People.Add(new PersonModel { FirstName = FirstName, LastName = LastName });
                FirstName = "";
                LastName = "";
            }
        }
        public BindableCollection<PersonModel> People
        {
            get
            {
                return _people;
            }
            set
            {
                _people = value;
            }
        }

     
        public PersonModel SelectedPerson
        {
            get
            {
                return _selectedPerson;
            }

            set
            {
                _selectedPerson = value;
                NotifyOfPropertyChange(()=> SelectedPerson);
            }
        }

        public void ClearText(string firstname, string lastname)
        {
            FirstName = "";
            LastName = "";
        }

        public bool CanClearText(string firstname, string lastname)
        {
            return !string.IsNullOrWhiteSpace(firstname) || !string.IsNullOrWhiteSpace(lastname);
        }

        public void LoadPageOne()
        {
            ActivateItem(new FirstChildViewModel());
        }
        public void LoadPageTwo()
        {
            ActivateItem(new SecondChildViewModel());
        }
    }
}
