using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.MemberInformation;
using MiBetDataAccess.MemberInfomation;

namespace MiBetBusiness.MemberInfomation
{
    public class clsBusinessSoccerDeadBall
    {
        clsDataAccessSoccerDeadBall obj = new clsDataAccessSoccerDeadBall();
        public List<clsSoccerDeadBall> getAll()
        {
            try
            {
                return obj.getAll();
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public clsSoccerDeadBall getById(int id)
        {
            try
            {
                return obj.getById(id);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public clsSoccerDeadBall getByAccId(Int64 accid)
        {
            try
            {
                return obj.getByAccId(accid);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Insert(Int64 accid, decimal handi_ng, decimal over_under, decimal firthandicap, decimal firtoverunder,
            decimal over_event, decimal onextwo, decimal correctscore, decimal totalgoal, decimal mixparlay, decimal outright)
        {
            try
            {
                obj.Insert(accid, handi_ng, over_under, firthandicap, firtoverunder, over_event, onextwo, correctscore, totalgoal, mixparlay, outright);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Update(int id, Int64 accid, decimal handi_ng, decimal over_under, decimal firthandicap, decimal firtoverunder,
            decimal over_event, decimal onextwo, decimal correctscore, decimal totalgoal, decimal mixparlay, decimal outright)
        {
            try
            {
                obj.Update(id,accid, handi_ng, over_under, firthandicap, firtoverunder, over_event, onextwo, correctscore, totalgoal, mixparlay, outright);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Delete(int id)
        {
            try
            {
                obj.Delete(id);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
