using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Dynamic
{
    [Serializable]
    public abstract class DynamicControl
    {
        private static int IDIndex = 1;

        public static string CreateID()
        {
            return "con" + IDIndex++;
        }

        public DynamicControl()
        {
            ID = CreateID();
            MyType = this.GetType().Name;
            
        }

        public string ID
        {
            get;
            protected set;
        }
    
        public string MyType
        {
            get;
            protected set;
        }
    }

    [Serializable]
    public class myInput : DynamicControl
    {
        public string DisplayText;
        public string InputValue;
    }

    [Serializable]
    public class myItem : DynamicControl
    {
        public string Text;
        public string Value;

        public myItem( string myText, string myValue)
        {
            ID = DynamicControl.CreateID();
            Text = myText;
            Value = myValue;
        }
    }

    [Serializable]
    public class myRadio : DynamicControl
    {
        public string DisplayText;
        public string GroupName;
        public List<myItem> ItemList;

        public myRadio()
        {
            ItemList = new List<myItem>();
        }
    }

    [Serializable]
    public class myCheckbox : DynamicControl
    {
        public string DisplayText;
        public string GroupName;
        public List<myItem> ItemList;

        public myCheckbox()
        {
            ItemList = new List<myItem>();
        }
    }

    [Serializable]
    public class myProgressbar : DynamicControl
    {
        public string DisplayText;
        public int Max;
        public int Min;
        public int Current;
    }

    [Serializable]
    public class myControlResult
    {
        public string ID;
        public string Type;
        public string Data;
    }
}