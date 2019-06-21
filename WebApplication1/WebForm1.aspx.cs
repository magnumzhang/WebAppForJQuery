using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Services;


using System.Speech.Synthesis; //用于生成响应的事件
using System.Speech;
using System.Speech.Recognition;

namespace WebApplication1
{


    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect("WebForm3.aspx?para1=100&para2=Hello");

        
        }

        [WebMethod]
        public static string SayHello()
        {
            return "Hello";
        }

        //System.Speech

        protected void Button1_Click(object sender, EventArgs e)
        {


            //SpeechSynthesizer Synthesizer = new SpeechSynthesizer();
            ////Synthesizer.Rate = -3;//发音速度
            ////Synthesizer.Volume = 100;//音量
            //Synthesizer.SelectVoice("Microsoft Lili");  //SpeakChina
            //Synthesizer.SelectVoice("Microsoft Anna");  //SpeakEnglish
            //Synthesizer.SpeakAsync("Car");

            //
            //Type type = Type.GetTypeFromProgID("SAPI.SpVoice");
            //dynamic spVoice = Activator.CreateInstance(type);
            //spVoice.Speak(TextBox2.Text.Trim());


            SpeechSynthesizer synth = new SpeechSynthesizer();
           
            synth.Speak("Hello");

            synth.Dispose();
        }
    }
}