function getPathofTrack(roomName){
	
	switch roomName {
		case "rPresentGameRoom":
		currentTrackPath = {
			FirstPath: pProposal,
			SecondPath: pProposal2,
			ThirdPath: pProposal3
		}
		break;
		
		
		case "rTileSetConcrete":
		currentTrackPath = {
			FirstPath: pConcrete,
			SecondPath: pConcrete2,
			ThirdPath: pConcrete3
		}
		break;
		
		case "rTileSetSandy":
		currentTrackPath = {
			FirstPath: pSandPath3,
			SecondPath: pSandPath2,
			ThirdPath: pSandPath
		}
		break;
		
		case "rTileSetTesting":
		currentTrackPath = {
			FirstPath: pGrassPath,
			SecondPath: pGrassPath2,
			ThirdPath: pGrassPath3
		}
		break;
		
		default:
		currentTrackPath = {
			FirstPath: pTestTrackPath,
			SecondPath: pTestTrackPath2,
			ThirdPath: pTestTrackPath3
		}
		
	}
	return currentTrackPath
}