#!/bin/bash
# =====================================================
# Level-1 Practice Programs Script
# =====================================================
# This script creates multiple Java files demonstrating:
# - Basic conditional programs
# - Loops, sum, factorial, odd/even, tables
# =====================================================

# Clean old files
rm -f *.class *.java

# ------------------ 1. Divisible By 5 ------------------
cat > DivisibleBy5.java <<'EOF'
import java.util.*;
public class DivisibleBy5 {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int num=sc.nextInt();
        System.out.println("Is the number "+num+" divisible by 5? "+(num%5==0));
    }
}
EOF

# ------------------ 2. Smallest of Three ------------------
cat > SmallestOfThree.java <<'EOF'
import java.util.*;
public class SmallestOfThree {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int a=sc.nextInt(),b=sc.nextInt(),c=sc.nextInt();
        System.out.println("Is the first number the smallest? "+(a<=b && a<=c));
    }
}
EOF

# ------------------ 3. Largest of Three ------------------
cat > LargestOfThree.java <<'EOF'
import java.util.*;
public class LargestOfThree {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int a=sc.nextInt(),b=sc.nextInt(),c=sc.nextInt();
        System.out.println("Is the first number the largest? "+(a>=b && a>=c));
        System.out.println("Is the second number the largest? "+(b>=a && b>=c));
        System.out.println("Is the third number the largest? "+(c>=a && c>=b));
    }
}
EOF

# ------------------ 4. Sum of Natural Numbers ------------------
cat > SumOfNaturalNumbers.java <<'EOF'
import java.util.*;
public class SumOfNaturalNumbers {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        if(n>=0) System.out.println("The sum of "+n+" natural numbers is "+(n*(n+1)/2));
        else System.out.println("The number "+n+" is not a natural number");
    }
}
EOF

# ------------------ 5. Voting Eligibility ------------------
cat > VotingEligibility.java <<'EOF'
import java.util.*;
public class VotingEligibility {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int age=sc.nextInt();
        if(age>=18) System.out.println("The person's age is "+age+" and can vote.");
        else System.out.println("The person's age is "+age+" and cannot vote.");
    }
}
EOF

# ------------------ 6. Positive Negative Zero ------------------
cat > PositiveNegativeZero.java <<'EOF'
import java.util.*;
public class PositiveNegativeZero {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int num=sc.nextInt();
        if(num>0) System.out.println("positive");
        else if(num<0) System.out.println("negative");
        else System.out.println("zero");
    }
}
EOF

# ------------------ 7. Spring Season ------------------
cat > SpringSeason.java <<'EOF'
import java.util.*;
public class SpringSeason {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int month=sc.nextInt(), day=sc.nextInt();
        if((month==3 && day>=20)||(month>3 && month<6)||(month==6 && day<=20))
            System.out.println("Its a Spring Season");
        else System.out.println("Not a Spring Season");
    }
}
EOF

# ------------------ 8. Countdown While ------------------
cat > CountdownWhile.java <<'EOF'
import java.util.*;
public class CountdownWhile {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int counter=sc.nextInt();
        while(counter>=1){ System.out.println(counter); counter--; }
        System.out.println("Lift Off!");
    }
}
EOF

# ------------------ 9. Countdown For ------------------
cat > CountdownFor.java <<'EOF'
import java.util.*;
public class CountdownFor {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        for(int i=n;i>=1;i--) System.out.println(i);
        System.out.println("Lift Off!");
    }
}
EOF

# ------------------ 10. Sum Until Zero ------------------
cat > SumUntilZero.java <<'EOF'
import java.util.*;
public class SumUntilZero {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        double total=0,num;
        while(true){
            num=sc.nextDouble();
            if(num==0) break;
            total+=num;
        }
        System.out.println("Total sum = "+total);
    }
}
EOF

# ------------------ 11. Sum Until Zero or Negative ------------------
cat > SumUntilZeroOrNegative.java <<'EOF'
import java.util.*;
public class SumUntilZeroOrNegative {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        double total=0;
        while(true){
            double num=sc.nextDouble();
            if(num<=0) break;
            total+=num;
        }
        System.out.println("Total sum = "+total);
    }
}
EOF

# ------------------ 12. Sum Natural Compare While ------------------
cat > SumNaturalCompareWhile.java <<'EOF'
import java.util.*;
public class SumNaturalCompareWhile {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        if(n>0){
            int sumFormula=n*(n+1)/2, sumLoop=0,i=1;
            while(i<=n) sumLoop+=i++;
            System.out.println("Formula sum = "+sumFormula);
            System.out.println("While loop sum = "+sumLoop);
        } else System.out.println("Not a natural number");
    }
}
EOF

# ------------------ 13. Sum Natural Compare For ------------------
cat > SumNaturalCompareFor.java <<'EOF'
import java.util.*;
public class SumNaturalCompareFor {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        if(n>0){
            int sumFormula=n*(n+1)/2, sumLoop=0;
            for(int i=1;i<=n;i++) sumLoop+=i;
            System.out.println("Formula sum = "+sumFormula);
            System.out.println("For loop sum = "+sumLoop);
        } else System.out.println("Not a natural number");
    }
}
EOF

# ------------------ 14. Factorial While ------------------
cat > FactorialWhile.java <<'EOF'
import java.util.*;
public class FactorialWhile {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt(),fact=1,i=1;
        if(n>=0){
            while(i<=n) fact*=i++;
            System.out.println("Factorial of "+n+" = "+fact);
        } else System.out.println("Not a natural number");
    }
}
EOF

# ------------------ 15. Factorial For ------------------
cat > FactorialFor.java <<'EOF'
import java.util.*;
public class FactorialFor {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt(),fact=1;
        if(n>=0){
            for(int i=1;i<=n;i++) fact*=i;
            System.out.println("Factorial of "+n+" = "+fact);
        } else System.out.println("Not a natural number");
    }
}
EOF

# ------------------ 16. Odd Even Numbers ------------------
cat > OddEvenNumbers.java <<'EOF'
import java.util.*;
public class OddEvenNumbers {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        if(n>0){
            for(int i=1;i<=n;i++)
                System.out.println(i+(i%2==0?" is Even":" is Odd"));
        } else System.out.println("Not a natural number");
    }
}
EOF

# ------------------ 17. Employee Bonus ------------------
cat > EmployeeBonus.java <<'EOF'
import java.util.*;
public class EmployeeBonus {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        double salary=sc.nextDouble();
        int years=sc.nextInt();
        if(years>5) System.out.println("Bonus = "+(0.05*salary));
        else System.out.println("No bonus");
    }
}
EOF

# ------------------ 18. Multiplication Table ------------------
cat > MultiplicationTable.java <<'EOF'
import java.util.*;
public class MultiplicationTable {
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        int number=sc.nextInt();
        for(int i=6;i<=9;i++) System.out.println(number+" * "+i+" = "+(number*i));
    }
}
EOF

# =====================================================
# Compile All
# =====================================================
echo "Compiling all programs..."
javac *.java || { echo "Compilation failed!"; exit 1; }

# =====================================================
# Run Sequentially with Sample Inputs
# =====================================================
echo "================ Running Programs ================"

echo "DivisibleBy5 (input: 25)"; echo "25" | java DivisibleBy5; echo "----"
echo "SmallestOfThree (input: 3 7 9)"; echo "3 7 9" | java SmallestOfThree; echo "----"
echo "LargestOfThree (input: 3 7 9)"; echo "3 7 9" | java LargestOfThree; echo "----"
echo "SumOfNaturalNumbers (input: 10)"; echo "10" | java SumOfNaturalNumbers; echo "----"
echo "VotingEligibility (input: 17)"; echo "17" | java VotingEligibility; echo "----"
echo "PositiveNegativeZero (input: -5)"; echo "-5" | java PositiveNegativeZero; echo "----"
echo "SpringSeason (input: 3 21)"; echo "3 21" | java SpringSeason; echo "----"
echo "CountdownWhile (input: 5)"; echo "5" | java CountdownWhile; echo "----"
echo "CountdownFor (input: 5)"; echo "5" | java CountdownFor; echo "----"
echo "SumUntilZero (inputs: 2 4 6 0)"; echo "2 4 6 0" | java SumUntilZero; echo "----"
echo "SumUntilZeroOrNegative (inputs: 2 4 -1)"; echo "2 4 -1" | java SumUntilZeroOrNegative; echo "----"
echo "SumNaturalCompareWhile (input: 10)"; echo "10" | java SumNaturalCompareWhile; echo "----"
echo "SumNaturalCompareFor (input: 10)"; echo "10" | java SumNaturalCompareFor; echo "----"
echo "FactorialWhile (input: 5)"; echo "5" | java FactorialWhile; echo "----"
echo "FactorialFor (input: 5)"; echo "5" | java FactorialFor; echo "----"
echo "OddEvenNumbers (input: 6)"; echo "6" | java OddEvenNumbers; echo "----"
echo "EmployeeBonus (input: 50000 6)"; echo "50000 6" | java EmployeeBonus; echo "----"
echo "MultiplicationTable (input: 7)"; echo "7" | java MultiplicationTable; echo "----"

echo "✅ All Level-1 programs executed!"
