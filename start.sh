echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/THANOOJ666/Jisshu-forward-bot THANOOJ666/Jisshu-forward-bot 
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/THANOOJ666/Jisshu-forward-bot -b $BRANCH /Jisshu-forward-bot
fi
cd THANOOJ666/Jisshu-forward-bot 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
gunicorn app:app & python3 main.py
