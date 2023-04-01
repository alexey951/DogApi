using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media.Imaging;

namespace dog_api.MVVM.ViewModel
{
    public class DogeApiClass
    {
        public static string getApi(string breed)
        {
            return "https://dog.ceo/api/breed/" + breed + "/images/random";
        }

        public static string getData(string api)
        {
            try
            {
                string Json = new WebClient().DownloadString(api);
                Messages result = JsonConvert.DeserializeObject<Messages>(Json);
                return result.Message;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + "Собака не найдена");
            }
            return null;
        }
        public static BitmapImage getImage(string api)
        {
            return new BitmapImage(new Uri(getData(api)));
        }
        public class Messages
        {
            public string Message { get; set; }
        }
    }
}
