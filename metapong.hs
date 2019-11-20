{-# LANGUAGE RecordWildCards #-}

module Main where

import Terminal.Game

import Lib

--------------------------------------------------------------------------------
-- Setup

fps = 30
w = 80
h = 24
xmin = 2
xmax = 79
ymin = 2
ymax = 23

main :: IO ()
main = do
  g <- newGame
  playGame g

newGame :: IO (Game State)
newGame = return $
  Game{
     gScreenWidth   = w
    ,gScreenHeight  = h
    ,gFPS           = fps
    ,gLogicFunction = gameUpdate
    ,gDrawFunction  = gameDraw
    ,gQuitFunction  = gameShouldQuit
    ,gInitState     = s
    }
  where
    s = State {
       sQuit = False
      ,sBallX = w `div` 2
      ,sBallY = h `div` 2
      ,sBallVX = 2
      ,sBallVY = 1
      }

data State = State {
   sQuit :: Bool
  ,sBallX :: Column
  ,sBallY :: Row
  ,sBallVX :: Integer
  ,sBallVY :: Integer
  }

--------------------------------------------------------------------------------
-- Logic

gameShouldQuit s = sQuit s

gameUpdate s ev =
  gameShouldQuitUpdate s ev &
  ballUpdate

gameShouldQuitUpdate s ev =
  case ev of
    KeyPress 'q' -> s{sQuit = True}
    _            -> s

ballUpdate s@State{..} =
  s{sBallX=bx''
   ,sBallY=by''
   ,sBallVX=bvx
   ,sBallVY=bvy
   }
  where
    bx' = sBallX + sBallVX
    by' = sBallY + sBallVY
    (bx'', bvx) | bx' > xmax = (bx' - 1, (-sBallVX))
                | bx' < xmin = (bx' + 1, (-sBallVX))
                | otherwise  = (bx'    , sBallVX)
    (by'', bvy) | by' > ymax = (by' - 1, (-sBallVY))
                | by' < ymin = (by' + 1, (-sBallVY))
                | otherwise  = (by'    , sBallVY)

--------------------------------------------------------------------------------
-- Drawing

gameDraw s@State{..} =
  walls s &
  (sBallY,sBallX) % ball s

ball s = color White Vivid $ cell 'o'

walls _ =
  color Blue Dull $
  box '*' w h &
  (2,2) % box ' ' (w-2) (h-2) &
  (h,w `div` 2 - 4) % stringPlane " q: quit "
  -- stringPlane $ unlines [
  --  "********************************************************************************"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"*                                                                              *"
  -- ,"********************************************************************************"
  -- ]
