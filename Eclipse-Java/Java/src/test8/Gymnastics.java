package test8;

public class Gymnastics implements Compute {
	@Override
	public double average(double scores[]) {
		double sum=0;
		double max=scores[0];
		double min=scores[0];
		for(double score:scores) {
			sum+=score;
			if(score>max)
				max=score;
			if(score<min)
				min=score;
		}
		sum=sum-min-max;
		double ave=sum/(scores.length-2);
		return ave;
	}
}
