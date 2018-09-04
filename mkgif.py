import imageio
import numpy as np
from glob import glob

fnames = sorted(glob('plants/*.jpg'))
ims = map(imageio.imread, fnames)
ims = [im for im in ims if np.mean(im) > 50]
ims = ims[0::6]
imageio.mimsave('/tmp/plants_.gif', ims)