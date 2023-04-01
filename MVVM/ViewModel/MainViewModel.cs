using dog_api.MVVM.Commands;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dog_api.MVVM.ViewModel
{
    internal class MainViewModel : BaseViewModel, INotifyPropertyChanged
    {
        private List<string> breeds;
        private readonly BaseCommand nextDog;
        private string dogImage;
        private string selectItem;

        public List<string> Breeds
        {
            get => breeds;
            set
            {
                breeds = value;
                OnPropertyChanged();
            }
        }
        public BaseCommand NextDog
        {
            get => nextDog;
        }
        public string DogImage
        {
            get => dogImage;
            set => Set(ref dogImage, value);
        }
        public string SelectItem
        {
            get => selectItem;
            set => Set(ref selectItem, value);
        }

        public MainViewModel()
        {
            breeds = new List<string>
            {
                "labrador",
                "husky",
                "affenpinscher",
                "african",
                "greyhound",
                "akita",
                "boxer",
                "corgi",
                "finnish",
                "beagle",
                "rottweiler",
                "spaniel/cocker"
            };

            nextDog = new BaseCommand(NextDogAction, (obj) => breeds.Count > 0);
        }


        private void NextDogAction(object param)
        {
            string api = ViewModel.DogeApiClass.getApi(selectItem);
            DogImage = ViewModel.DogeApiClass.getData(api);
        }
    }
}
