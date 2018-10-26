import os
import imageio
import numpy as np
from glob import glob
from scipy.misc import imresize

fnames = sorted(glob('plants/*.jpg'))

ims = []
to_remove = []

for fn in fnames:
    im = imresize(imageio.imread(fn), 0.5)

    # Remove images that are almost entirely dark
    if np.mean(im) <= 50:
        to_remove.append(fn)
    else:
        ims.append(im)

print('Removing:', len(to_remove))
for fn in to_remove:
    os.remove(fn)

ims = ims[0::6]
print(len(ims), 'images')
imageio.mimsave('/tmp/plants_.gif', ims)