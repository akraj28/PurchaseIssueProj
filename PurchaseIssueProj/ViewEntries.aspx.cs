using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace PurchaseIssueProj
{
    public partial class ViewEntries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {

                string strType = rdbtnType.SelectedValue.ToString();
                if(strType== "B")
                {
                    strType = "";
                }
                string rdvalue = RadioButtonList1.SelectedValue.ToString();
                if (rdvalue == "all")
                {
                    rdvalue = "";
                }
                string frmDate = txtFrmdate.Text.ToString();
                string toDate = txtToDate.Text.ToString();
                                  //string strQuery = "Select * from purchaseIssues ";
                    //if (rdvalue != "all")
                    //{
                    //    strQuery += " where TypeCode ='" + strType.ToString() + "'";
                    //    strQuery += " and VnDptTyp ='" + rdvalue.ToString() + "'";
                    //}
                    //con.Open();
                    //SqlCommand cmd = new SqlCommand(strQuery, con);
                    //cmd.CommandType = System.Data.CommandType.Text;
                    con.Open();
                    SqlCommand cmd = new SqlCommand("spViewData", con);
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@TypeCode", strType);
                    cmd.Parameters.AddWithValue("@VnDptTyp", rdvalue);
                    cmd.Parameters.AddWithValue("@FrmDate", frmDate);
                    cmd.Parameters.AddWithValue("@ToDate", toDate);

                    GridView1.DataSource = cmd.ExecuteReader();
                    GridView1.DataBind();
                

            }
        }

    }
}