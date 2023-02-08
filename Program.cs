using System;

namespace assignment1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string[] skills = new string[] { "C#", "Java", "SQL" };
            Instructor instructor = new Instructor("sravya", 4.6f, 4, skills);
            Console.WriteLine("Is instructor eligible: " + instructor.validateligibility());
            Console.WriteLine("Does instructor have skill in python: " + instructor.CheckSkill("python"));
            //if (instructor.validateligibility())
            //{
            //    Console.WriteLine("instructor is eligible");
            //}
            //else
            //{
            //    Console.WriteLine("instructor is not eligible");
            //}
            //if (instructor.CheckSkill("java"))
            //{
            //    Console.WriteLine("instructor possess the skill");
            //}
            //else
            //{
            //    Console.WriteLine("instructor doesnot possess the skill");
            //}
        }
        
    }
}
