/**
 * Author:     Robert Breutzmann
 * Assignment: CSD-430 Module 11 - Coding Standards Examples (Java)
 * Purpose:    Companion code sample for Assignment 11.2 (Coding Standard in
 *             Software Development). Demonstrates three of the coding
 *             conventions discussed in that paper - descriptive naming,
 *             input verification, and avoiding magic numbers - by showing
 *             one or more incorrect approaches next to the corrected one.
 * Due Date:   August 2nd, 2026
 */

/**
 * Demonstrates three common coding standards using small, self-contained
 * examples. Each nested class below covers a single convention and follows
 * the same layout: a description of the convention, one or more incorrect
 * examples showing what to avoid, and a correct example showing the fix.
 */
public class CodingStandards {

    // =========================================================================
    // 1. NAMING STANDARDS
    //    Convention: identifiers (variables, methods, fields) should be
    //    descriptive enough that a reader can tell what they hold or do
    //    without needing an outside explanation - this is often called
    //    "self-documenting" code. Cryptic, single-letter, or misleading
    //    names force every future reader to go dig through the surrounding
    //    logic just to figure out what a value represents.
    // =========================================================================
    static class NamingStandards {

        /**
         * Incorrect Way #1: cryptic, single-letter names.
         * "p", "r", and "t" give no hint about what they represent. A reader
         * has to trace how each variable is used before understanding that
         * this method calculates a total price after tax.
         */
        double incorrectExampleOne(double p, double r, double t) {
            return p + (p * r) + t;
        }

        /**
         * Incorrect Way #2: names that are technically words but are vague
         * or misleading about what they actually hold. "data" and "value"
         * could mean anything, and "temp" implies the result is throwaway
         * even though it is the method's return value.
         */
        double incorrectExampleTwo(double data, double value, double temp) {
            double result = data + (data * value) + temp;
            return result;
        }

        /**
         * Correct Way: every identifier states exactly what it represents,
         * so the calculation reads the same way the business rule would be
         * described in English: price, plus price times the tax rate, plus
         * a flat shipping fee, equals the order total.
         */
        double correctExample(double price, double taxRate, double shippingFee) {
            double orderTotal = price + (price * taxRate) + shippingFee;
            return orderTotal;
        }
    }

    // =========================================================================
    // 2. INPUT VERIFICATION
    //    Convention: code that accepts input from a user (or any caller)
    //    should validate that the input is actually what the method expects
    //    before acting on it, instead of assuming the caller always sends
    //    valid data. Skipping this can allow invalid state, like a negative
    //    withdrawal amount, to slip through unchecked.
    // =========================================================================
    static class InputVerification {

        /**
         * Incorrect Way #1: no validation at all. This blindly trusts that
         * withdrawalAmount is a sane, positive number that does not exceed
         * the balance. A caller could pass -500 and this method would
         * happily increase the balance instead of withdrawing from it.
         */
        double incorrectExampleOne(double balance, double withdrawalAmount) {
            return balance - withdrawalAmount;
        }

        /**
         * Incorrect Way #2: partial validation. This catches negative
         * amounts but still forgets to check whether the withdrawal is
         * larger than the available balance, so the account can still be
         * overdrawn.
         */
        double incorrectExampleTwo(double balance, double withdrawalAmount) {
            if (withdrawalAmount < 0) {
                throw new IllegalArgumentException("Withdrawal amount cannot be negative.");
            }
            return balance - withdrawalAmount;
        }

        /**
         * Correct Way: every assumption about the input is checked before
         * it is used - the amount must be positive, and it cannot exceed
         * the funds actually available.
         */
        double correctExample(double balance, double withdrawalAmount) {
            if (withdrawalAmount <= 0) {
                throw new IllegalArgumentException("Withdrawal amount must be greater than zero.");
            }
            if (withdrawalAmount > balance) {
                throw new IllegalArgumentException("Withdrawal amount cannot exceed the account balance.");
            }
            return balance - withdrawalAmount;
        }
    }

    // =========================================================================
    // 3. NO MAGIC NUMBERS
    //    Convention: a literal number embedded directly in an expression,
    //    with no explanation of what it represents, is a "magic number".
    //    They should instead be assigned to a named constant so the value's
    //    meaning is documented once at its declaration and reused
    //    consistently everywhere it is needed.
    // =========================================================================
    static class NoMagicNumbers {

        /**
         * Incorrect Way #1: 3.14159 appears with no explanation. A reader
         * unfamiliar with the formula has no way to know this is pi.
         */
        double incorrectExampleOne(double radius) {
            return 3.14159 * radius * radius;
        }

        /**
         * Incorrect Way #2: 0.07 is hardcoded directly into the
         * calculation. If the sales tax rate ever changes, every method
         * that repeats this literal has to be found and edited by hand,
         * and it is not obvious 0.07 even represents a tax rate.
         */
        double incorrectExampleTwo(double price) {
            return price + (price * 0.07);
        }

        private static final double PI = 3.14159;
        private static final double SALES_TAX_RATE = 0.07;

        /**
         * Correct Way: the constants PI and SALES_TAX_RATE document what
         * each value means at the point they are declared, and changing
         * either value only requires editing it in one place.
         */
        double correctExampleCircleArea(double radius) {
            return PI * radius * radius;
        }

        double correctExampleTotalWithTax(double price) {
            return price + (price * SALES_TAX_RATE);
        }
    }
}
