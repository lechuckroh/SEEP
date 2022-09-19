CREATE MIGRATION m1upzceimdw4admlodebjqq3up2yxeyyy3lwj2elsvisjmrre2m6qa
    ONTO initial
{
  CREATE TYPE default::Member {
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  CREATE SCALAR TYPE default::Category EXTENDING enum<Lunch, Overtime, Team, Other>;
  CREATE TYPE default::Usage {
      CREATE MULTI LINK members -> default::Member;
      CREATE REQUIRED PROPERTY amount -> std::int32;
      CREATE REQUIRED PROPERTY category -> default::Category;
      CREATE REQUIRED PROPERTY days -> std::int16 {
          SET default := 1;
      };
      CREATE PROPERTY description -> std::str;
      CREATE REQUIRED PROPERTY used_at -> cal::local_date;
  };
};
