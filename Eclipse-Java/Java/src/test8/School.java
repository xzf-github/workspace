package test8;

public class School implements Compute{
	@Override
	public double average(double scores[]) {
		double sum=0;
		for(double score:scores)
			sum+=score;
	double ave=sum/scores.length;
	return ave;
	}
}
