using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using System.Web.Script.Serialization;
using System.Net;
using System.Text;
using Newtonsoft.Json;

namespace After_Login_Design
{
    public partial class After_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string apiUrl = "http://assistservice.iappsforme.com/api/student/students/123456";
            WebClient client = new WebClient();
            client.Headers["Content-type"] = "application/json";
            client.Encoding = Encoding.UTF8;
            string json = client.DownloadString(apiUrl);

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            student lstProduct = serializer.Deserialize<student>(json);
            //Binding gridview from dynamic object 
            lblRegistrationNumber.Text = lstProduct.RegistrationNumber;
            lblStudName.Text = lstProduct.StudName;
            lblClass.Text = lstProduct.Class;
            lblRollNumber.Text = lstProduct.RollNumber;
            lblSection.Text = lstProduct.Section;
            lblFatherName.Text = lstProduct.FatherName;
            lblMotherName.Text = lstProduct.MotherName;
            lblAddress.Text = lstProduct.Address;
            lblMobileNumber.Text = lstProduct.MobileNumber;
            lblEmailID.Text = lstProduct.EmailID;

            //attendance
            JObject jsonResponse = JsonConvert.DeserializeObject<JObject>(json);
            List<AttendanceDetails> attendance = jsonResponse["AttendanceDetails"].ToObject<List<AttendanceDetails>>();
            gvAttendance.DataSource = attendance;
            gvAttendance.DataBind();

            //Payment
            JObject jsonResponse1 = JsonConvert.DeserializeObject<JObject>(json);
            List<Notifications> notifications = jsonResponse1["Notifications"].ToObject<List<Notifications>>();

            //Notification

        }
    }
    public class student
    {
        public string NotificationID;

        public string StudName { get; set; }
        public string Class { get; set; }
        public string RollNumber { get; set; }
        public string RegistrationNumber { get; set; }
        public string PhotoPath { get; set; }
        public string EmailID { get; set; }
        public string MobileNumber { get; set; }
        public string Address { get; set; }
        public string Section { get; set; }
        public string FatherName { get; set; }
        public string MotherName { get; set; }
        public List<AttendanceDetails> attendanceDtl { get; set; }
    }
    public class AttendanceDetails
    {
        public DateTime AttendanceDate { get; set; }
        public string Status { get; set; }
    }
    public class Notifications
    {
        public string NotificationID { get; set; }
        public DateTime NotificationDate { get; set; }
        public string Description { get; set; }
        public string NotificationType { get; set; }
        public string Priority { get; set; }
        public string Status { get; set; }
        public string AuthorName { get; set; }
    }
}