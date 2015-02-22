INCLUDE_OPTS := -I\include

CXXFLAGS =	-O2 -g -Wall -DNDEBUG -fmessage-length=0 $(INCLUDE_OPTS) 

OBJS := src/tools/Tools.o \
		src/tools/rand48.o \
		src/spatialindex/SpatialIndexImpl.o \
		src/tprtree/TPRTree.o \
		src/storagemanager/DiskStorageManager.o \
		src/storagemanager/RandomEvictionsBuffer.o \
		src/spatialindex/Region.o \
		src/mvrtree/MVRTree.o \
		src/spatialindex/TimeRegion.o \
		src/spatialindex/TimePoint.o \
		src/mvrtree/Leaf.o \
		src/mvrtree/Node.o \
		src/rtree/RTree.o \
		src/spatialindex/MovingRegion.o \
		src/rtree/Statistics.o \
		src/tprtree/Statistics.o \
		src/tprtree/Leaf.o \
		src/storagemanager/Buffer.o \
		src/tprtree/Node.o \
		src/mvrtree/Statistics.o \
		src/rtree/Leaf.o \
		src/rtree/Node.o \
		src/mvrtree/Index.o \
		src/tprtree/Index.o \
		src/rtree/Index.o \
		src/rtree/BulkLoader.o \
		src/rtree/hilbert.o \
		src/spatialindex/Point.o \
		src/storagemanager/MemoryStorageManager.o 

spatialindex.lib: $(OBJS)
			ar -q libspatialindex.a $(OBJS)

all:	spatialindex.lib

clean:
	rm -f $(OBJS)