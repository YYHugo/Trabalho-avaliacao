

#include <iostream>
#include <iomanip>
#include "cv.h"
#include "highgui.h"

using namespace std;

int main( int argc, char** argv )

{
	int i = 1;
	
	while(argv[i] != NULL){
	// Create an IplImage object *image 
	IplImage *image = cvLoadImage( argv[i]);

	// Display Image Attributes by accessing a IplImage object's data members

	cout << left << setfill(' ') <<  setw(15) << "Image filename:" << argv[i] << endl;

	cout << setw(15) << "Width:" <<  image->width << endl;
	cout << setw(15) << "Height:" <<  image->height << endl;

	cout << setw(15) << "Pixel Depth:" <<  image->depth << endl;
	cout << setw(15) << "Channels:" <<  image->nChannels << endl;

	cout << setw(15) << "Image Size:" <<  image->imageSize << endl;
	i++;
	}
	return 0;
}
