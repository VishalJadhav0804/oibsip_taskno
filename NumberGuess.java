
import java.util.Random;
import java.util.Scanner;

class NumberGuess {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String play = "yes";
        int round = 0, totalscore = 0, totaltries = 0;

        System.out.println();
        System.out.println("please choose number between 1 to 100 ");

        while (play.equals("yes")) {
            round++;
            int guess, k = 5, tries = 0, score = 0;
            Random rand = new Random();
            int number = rand.nextInt(100);

            for (int a = 0; a < k; a++) {
                System.out.println();
                System.out.println("Guess the number : ");
                guess = sc.nextInt();

                if (number == guess) {
                    tries++;
                    System.out.println("Congratulation ! you win");
                    System.out.println();
                    System.out.println("\nTries " + tries);
                    System.out.println("Score " + score);
                    totaltries += tries;
                    totalscore += score;

                    System.out.println();
                    System.out.println("would you like to play again : ");
                    play = sc.next().toLowerCase();
                    break;
                } else if (number > guess && a != k - 1) {
                    System.out.println("The number is greater than " + guess);
                    tries++;
                    score--;
                } else {

                    System.out.println("The number is less than " + guess);
                    tries++;
                    score--;
                }
                if (a == k) {
                    System.out.println("You completed 5 tries .");
                    System.out.println("the number was : " + number);
                    totaltries += tries;
                    totalscore += score;
                    System.out.println("\nTries : " + tries);
                    System.out.println("Score : " + score);
                    System.out.println();
                    System.out.println("Want to play again : ? yes or no");
                    play = sc.next().toLowerCase();
                }
            }
            System.out.println("\nRounds : " + round);
            System.out.println("Total Tries : " + totaltries);
            System.out.println("totalScore : " + totalscore);
        }

    }
}