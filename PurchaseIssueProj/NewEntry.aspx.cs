using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace PurchaseIssueProj
{
    public partial class NewEntry : System.Web.UI.Page
    {
      static string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           // divSubmit.Visible = false;
            string strType = rdbtnType.SelectedValue.ToString();
            string rdvalue = RadioButtonList1.SelectedValue.ToString();

            if (rdvalue != null && rdvalue != "")
            {
                // divSubmit.Visible = true;
                string strQuery = "";
                if (rdvalue == "vend")
                {
                    lblVenDept.Text = "Vendor";
                     strQuery = "Select VendId as Id,Name from vendormaster ";                    
                }
                else if(rdvalue == "dept")
                {
                    lblVenDept.Text = "Department";
                    strQuery = "Select DEptId as Id, Name from deptmaster ";                    
                }
                AddDrpdwnVal(strQuery);
            }
        }

        private void AddDrpdwnVal(string Query)
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand com = new SqlCommand(Query, con);
                com.CommandType = CommandType.Text;
                com.Connection = con;              
                DropDownList2.DataSource = com.ExecuteReader();
                DropDownList2.DataTextField = "Name";
                DropDownList2.DataValueField = "Id";
                DropDownList2.DataBind();
               
            }
        }
           

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(cs))
            {
                string strType = rdbtnType.SelectedValue.ToString();
                if (strType != "")
                {
                    SqlCommand cmd = new SqlCommand("spAddData", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@TypeCode", rdbtnType.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@VnDptTyp", RadioButtonList1.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@VnDptVal", DropDownList2.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@GdVal", txtGold.Text);
                    cmd.Parameters.AddWithValue("@DiaVal", txtDia.Text);
                    con.Open();
                    int InsrtResult = cmd.ExecuteNonQuery();
                    if (InsrtResult > 0)
                    {
                        lblMsg.Text = "Entry Successful";
                    }
                    else
                    {
                        lblMsg.Text = "Entry Failed";
                    }
                }
            }
        }
    }
}