﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace student_platform.DAL.Entities
{
    public class StudentAddress
    {
        public int Id { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public int StudentId { get; set; }
        public virtual Student Student { get; set; }
    }
}
