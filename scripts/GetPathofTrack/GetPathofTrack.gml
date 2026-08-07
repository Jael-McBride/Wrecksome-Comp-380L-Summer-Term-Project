function getPathofTrack(roomName){
	currentTrackPath = 0
	switch roomName {
		case rPresentGameRoom:
		currentTrackPath = {
			FirstPath: pProposal,
			SecondPath: pProposal2,
			ThirdPath: pProposal3,
		}
		break;
		
		
		case rTileSetConcrete:
		currentTrackPath = {
			FirstPath: pConcrete,
			SecondPath: pConcrete2,
			ThirdPath: pConcrete3,
		}
		break;
		
		case rTileSetSandy:
		currentTrackPath = {
			FirstPath: pSandPath,
			SecondPath: pSandPath2,
			ThirdPath: pSandPath3,
		}
		break;
		
		case rTileSetTesting:
		currentTrackPath = {
			FirstPath: pGrassPath,
			SecondPath: pGrassPath2,
			ThirdPath: pGrassPath3,
		}
		break;
		
		default:
		currentTrackPath = {
			FirstPath: pTestTrackPath,
			SecondPath: pTestTrackPath2,
			ThirdPath: pTestTrackPath3
		}
		return currentTrackPath
	}
}