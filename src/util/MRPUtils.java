package util;

import entity.*;

import java.util.ArrayList;
import java.util.List;

public class MRPUtils {
    public static void MRP() {
        String s[] = new String[]{};
        List<BOM> bom = DBO.query("from BOM", s);
        List<TPOP> tpop = DBO.query("from TPOP", s);
        List<Inventory> inventory = DBO.query("from Inventory", s);
        List<ItemMaster> itemmaster = DBO.query("from ItemMaster order by LLC", s);
        ArrayList<String> str1 = new ArrayList<>();//已知TPOP的p-No
        ArrayList<String> str2 = new ArrayList<>();//要计算MRP的p-No
        for (ItemMaster x : itemmaster) {
            if (x.getLLC() == 0) {
                str1.add(x.getP_No());
            }
            if (x.getLLC() != 0) {
                str2.add(x.getP_No());
            }
        }

        for (int i = 0; i < str2.size(); i++) {
            List<MRP> mrps = DBO.query("from MRP", s);
            MRP mrp = new MRP();
            mrp.setP_No(str2.get(i));

            for (ItemMaster x : itemmaster) {
                if (x.getP_No().equals(str2.get(i))) {
                    mrp.setLT(x.getLT());
                    mrp.setST(x.getST());
                    mrp.setSS(x.getSS());
                    mrp.setLSR(x.getLSR());
                    mrp.setLS(x.getLS());
                }
            }
            for (Inventory x : inventory) {
                if (x.getP_No().equals(str2.get(i))) {
                    mrp.setOH(x.getOH());
                    mrp.setAL(x.getAL());
                    mrp.setSR0(x.getOO0());
                    mrp.setSR1(x.getOO1());
                    mrp.setSR2(x.getOO2());
                    mrp.setSR3(x.getOO3());
                    mrp.setSR4(x.getOO4());
                    mrp.setSR5(x.getOO5());
                    mrp.setSR6(x.getOO6());
                    mrp.setSR7(x.getOO7());
                    mrp.setSR8(x.getOO8());
                    mrp.setSR9(x.getOO9());
                    mrp.setSR10(x.getOO10());
                    mrp.setSR11(x.getOO11());
                    mrp.setSR12(x.getOO12());
                }
            }
            int GR0 = 0;
            int GR1 = 0;
            int GR2 = 0;
            int GR3 = 0;
            int GR4 = 0;
            int GR5 = 0;
            int GR6 = 0;
            int GR7 = 0;
            int GR8 = 0;
            int GR9 = 0;
            int GR10 = 0;
            int GR11 = 0;
            int GR12 = 0;
            for (BOM x : bom) {
                if (x.getComp().equals(str2.get(i))) {
                    for (TPOP y : tpop) {
                        if (y.getP_No().equals(x.getParent())) {
                            GR0 += y.getPOR0() * x.getQ_P();
                            GR1 += y.getPOR1() * x.getQ_P();
                            GR2 += y.getPOR2() * x.getQ_P();
                            GR3 += y.getPOR3() * x.getQ_P();
                            GR4 += y.getPOR4() * x.getQ_P();
                            GR5 += y.getPOR5() * x.getQ_P();
                            GR6 += y.getPOR6() * x.getQ_P();
                            GR7 += y.getPOR7() * x.getQ_P();
                            GR8 += y.getPOR8() * x.getQ_P();
                            GR9 += y.getPOR9() * x.getQ_P();
                            GR10 += y.getPOR10() * x.getQ_P();
                            GR11 += y.getPOR11() * x.getQ_P();
                            GR12 += y.getPOR12() * x.getQ_P();
                        }
                    }
                    for (MRP z : mrps) {
                        if (z.getP_No().equals(x.getParent())) {
                            GR0 += z.getPOR0() * x.getQ_P();
                            GR1 += z.getPOR1() * x.getQ_P();
                            GR2 += z.getPOR2() * x.getQ_P();
                            GR3 += z.getPOR3() * x.getQ_P();
                            GR4 += z.getPOR4() * x.getQ_P();
                            GR5 += z.getPOR5() * x.getQ_P();
                            GR6 += z.getPOR6() * x.getQ_P();
                            GR7 += z.getPOR7() * x.getQ_P();
                            GR8 += z.getPOR8() * x.getQ_P();
                            GR9 += z.getPOR9() * x.getQ_P();
                            GR10 += z.getPOR10() * x.getQ_P();
                            GR11 += z.getPOR11() * x.getQ_P();
                            GR12 += z.getPOR12() * x.getQ_P();
                        }
                    }
                }
            }
            mrp.setGR0(GR0);
            mrp.setGR1(GR1);
            mrp.setGR2(GR2);
            mrp.setGR3(GR3);
            mrp.setGR4(GR4);
            mrp.setGR5(GR5);
            mrp.setGR6(GR6);
            mrp.setGR7(GR7);
            mrp.setGR8(GR8);
            mrp.setGR9(GR9);
            mrp.setGR10(GR10);
            mrp.setGR11(GR11);
            mrp.setGR12(GR12);

            int[] GR = new int[]{mrp.getGR0(), mrp.getGR1(), mrp.getGR2(), mrp.getGR3(), mrp.getGR4(), mrp.getGR5(), mrp.getGR6(), mrp.getGR7(), mrp.getGR8(), mrp.getGR9(), mrp.getGR10(), mrp.getGR11(), mrp.getGR12()};
            int[] SR = new int[]{mrp.getSR0(), mrp.getSR1(), mrp.getSR2(), mrp.getSR3(), mrp.getSR4(), mrp.getSR5(), mrp.getSR6(), mrp.getSR7(), mrp.getSR8(), mrp.getSR9(), mrp.getSR10(), mrp.getSR11(), mrp.getGR12()};
            int[] POH = new int[]{mrp.getPOH0(), mrp.getPOH1(), mrp.getPOH2(), mrp.getPOH3(), mrp.getPOH4(), mrp.getPOH5(), mrp.getPOH6(), mrp.getPOH7(), mrp.getPOH8(), mrp.getPOH9(), mrp.getPOH10(), mrp.getPOH11(), mrp.getPOH12()};
            int[] PAB = new int[]{mrp.getPAB0(), mrp.getPAB1(), mrp.getPAB2(), mrp.getPAB3(), mrp.getPAB4(), mrp.getPAB5(), mrp.getPAB6(), mrp.getPAB7(), mrp.getPAB8(), mrp.getPAB9(), mrp.getPAB10(), mrp.getPAB11(), mrp.getPAB12()};
            int[] NR = new int[]{mrp.getNR0(), mrp.getNR1(), mrp.getNR2(), mrp.getNR3(), mrp.getNR4(), mrp.getNR5(), mrp.getNR6(), mrp.getNR7(), mrp.getNR8(), mrp.getNR9(), mrp.getNR10(), mrp.getNR11(), mrp.getNR12()};
            int[] PORcpt = new int[]{mrp.getPORcpt0(), mrp.getPORcpt1(), mrp.getPORcpt2(), mrp.getPORcpt3(), mrp.getPORcpt4(), mrp.getPORcpt5(), mrp.getPORcpt6(), mrp.getPORcpt7(), mrp.getPORcpt8(), mrp.getPORcpt9(), mrp.getPORcpt10(), mrp.getPORcpt11(), mrp.getPORcpt12()};
            int[] POR = new int[]{mrp.getPOR0(), mrp.getPOR1(), mrp.getPOR2(), mrp.getPOR3(), mrp.getPOR4(), mrp.getPOR5(), mrp.getPOR6(), mrp.getPOR7(), mrp.getPOR8(), mrp.getPOR9(), mrp.getPOR10(), mrp.getPOR11(), mrp.getPOR12()};

            for (int j = 0; j < 13; j++) {
                if (j == 0) {
                    POH[0] = -1;
                    PAB[0] = -1;
                    NR[0] = -1;
                } else if (j == 1) {
                    POH[1] = (Integer.valueOf(mrp.getOH()) + SR[0] + SR[1] - Integer.valueOf(mrp.getAL()) - GR[0] - GR[1]);
                    if ((mrp.getSS() - POH[1]) < 0) {
                        NR[1] = 0;
                    } else {
                        NR[1] = mrp.getSS() - POH[1];
                    }
                    if (NR[1] == 0) {
                        PORcpt[1] = 0;
                    } else {
                        if (mrp.getLSR().equals("FOQ")) {
                            PORcpt[1] = mrp.getLS();
                            POR[1 - mrp.getLT() - mrp.getST()] = mrp.getLS();
                        }
                        if (mrp.getLSR().equals("LFL")) {
                            PORcpt[1] = NR[1];
                            POR[1 - mrp.getLT() - mrp.getST()] = NR[1];
                        }
                    }
                    PAB[1] = POH[1] + PORcpt[1];
                } else {
                    POH[j] = PAB[j - 1] + SR[j] - GR[j];
                    if ((mrp.getSS() - POH[j]) < 0) {
                        NR[j] = 0;
                    } else {
                        NR[j] = mrp.getSS() - POH[j];
                    }
                    if (NR[j] == 0) {
                        PORcpt[j] = 0;
                    } else {
                        if (mrp.getLSR().equals("FOQ")) {
                            PORcpt[j] = mrp.getLS();
                            POR[j - mrp.getLT() - mrp.getST()] = mrp.getLS();
                        }
                        if (mrp.getLSR().equals("LFL")) {
                            PORcpt[j] = NR[j];
                            POR[j - mrp.getLT() - mrp.getST()] = NR[j];
                        }
                    }
                    PAB[j] = POH[j] + PORcpt[j];
                }
            }
            mrp.setGR0(GR[0]);
            mrp.setGR1(GR[1]);
            mrp.setGR2(GR[2]);
            mrp.setGR3(GR[3]);
            mrp.setGR4(GR[4]);
            mrp.setGR5(GR[5]);
            mrp.setGR6(GR[6]);
            mrp.setGR7(GR[7]);
            mrp.setGR8(GR[8]);
            mrp.setGR9(GR[9]);
            mrp.setGR10(GR[10]);
            mrp.setGR11(GR[11]);
            mrp.setGR12(GR[12]);
            mrp.setSR0(SR[0]);
            mrp.setSR1(SR[1]);
            mrp.setSR2(SR[2]);
            mrp.setSR3(SR[3]);
            mrp.setSR4(SR[4]);
            mrp.setSR5(SR[5]);
            mrp.setSR6(SR[6]);
            mrp.setSR7(SR[7]);
            mrp.setSR8(SR[8]);
            mrp.setSR9(SR[9]);
            mrp.setSR10(SR[10]);
            mrp.setSR11(SR[11]);
            mrp.setSR12(SR[12]);
            mrp.setPOH0(POH[0]);
            mrp.setPOH1(POH[1]);
            mrp.setPOH2(POH[2]);
            mrp.setPOH3(POH[3]);
            mrp.setPOH4(POH[4]);
            mrp.setPOH5(POH[5]);
            mrp.setPOH6(POH[6]);
            mrp.setPOH7(POH[7]);
            mrp.setPOH8(POH[8]);
            mrp.setPOH9(POH[9]);
            mrp.setPOH10(POH[10]);
            mrp.setPOH11(POH[11]);
            mrp.setPOH12(POH[12]);
            mrp.setPAB0(PAB[0]);
            mrp.setPAB1(PAB[1]);
            mrp.setPAB2(PAB[2]);
            mrp.setPAB3(PAB[3]);
            mrp.setPAB4(PAB[4]);
            mrp.setPAB5(PAB[5]);
            mrp.setPAB6(PAB[6]);
            mrp.setPAB7(PAB[7]);
            mrp.setPAB8(PAB[8]);
            mrp.setPAB9(PAB[9]);
            mrp.setPAB10(PAB[10]);
            mrp.setPAB11(PAB[11]);
            mrp.setPAB12(PAB[12]);
            mrp.setNR0(NR[0]);
            mrp.setNR1(NR[1]);
            mrp.setNR2(NR[2]);
            mrp.setNR3(NR[3]);
            mrp.setNR4(NR[4]);
            mrp.setNR5(NR[5]);
            mrp.setNR6(NR[6]);
            mrp.setNR7(NR[7]);
            mrp.setNR8(NR[8]);
            mrp.setNR9(NR[9]);
            mrp.setNR10(NR[10]);
            mrp.setNR11(NR[11]);
            mrp.setNR12(NR[12]);
            mrp.setPORcpt0(PORcpt[0]);
            mrp.setPORcpt1(PORcpt[1]);
            mrp.setPORcpt2(PORcpt[2]);
            mrp.setPORcpt3(PORcpt[3]);
            mrp.setPORcpt4(PORcpt[4]);
            mrp.setPORcpt5(PORcpt[5]);
            mrp.setPORcpt6(PORcpt[6]);
            mrp.setPORcpt7(PORcpt[7]);
            mrp.setPORcpt8(PORcpt[8]);
            mrp.setPORcpt9(PORcpt[9]);
            mrp.setPORcpt10(PORcpt[10]);
            mrp.setPORcpt11(PORcpt[11]);
            mrp.setPORcpt12(PORcpt[12]);
            mrp.setPOR0(POR[0]);
            mrp.setPOR1(POR[1]);
            mrp.setPOR2(POR[2]);
            mrp.setPOR3(POR[3]);
            mrp.setPOR4(POR[4]);
            mrp.setPOR5(POR[5]);
            mrp.setPOR6(POR[6]);
            mrp.setPOR7(POR[7]);
            mrp.setPOR8(POR[8]);
            mrp.setPOR9(POR[9]);
            mrp.setPOR10(POR[10]);
            mrp.setPOR11(POR[11]);
            mrp.setPOR12(POR[12]);

            for (int m = 0; m < 13; m++) {
                System.out.print(GR[m] + "  ");
                System.out.print(SR[m] + "  ");
                System.out.print(POH[m] + "  ");
                System.out.print(PAB[m] + "  ");
                System.out.print(NR[m] + "  ");
                System.out.print(PORcpt[m] + "  ");
                System.out.println(POR[m] + "  ");
            }

            mrps.add(mrp);
            DBO.add(mrp);

        }
    }
}