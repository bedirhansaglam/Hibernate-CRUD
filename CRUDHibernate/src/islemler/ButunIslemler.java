package islemler;

public class ButunIslemler {
	
	
	public String tarihCevir(String tarih)
	{ //ddMMuyyyy hh:mm:ss formatýnda gelen tarih türkçe þekle dönüþtürülüyor. dd-Gün, MM-ay, u-Haftanýn kaçýncý günü ,yyyy yýlý ,hh:mm:ss saat:dakika:saniye biçiminde tarihi temsil eder
		String turkceTarih="";
		String[] gunler= {"Pazartesi","Salý","Çarþamba","Perþembe","Cuma","Cumartesi","Pazar"};
		String[] aylar= {"Ocak","Þubat","Mart","Nisan","Mayýs","Haziran","Temmuz","Aðustos","Eylül","Ekim","Kasým","Aralýk"};
		int ay=Integer.parseInt(tarih.substring(2,4))-1;
		int gun=Integer.parseInt(tarih.substring(4,5))-1;
		turkceTarih+=tarih.substring(0,2)+" "+aylar[ay]+" "+tarih.substring(5,9) +" "+gunler[gun]+" Saat "+tarih.substring(10);
		return turkceTarih;
	}

}
