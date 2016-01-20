function horizon_reset_env
  mv openstack_dashboard/local/local_settings.py /tmp
  git clean -dfx
  cd ~
  cd -
  npm install
  rm -rf .tox
  pip install tox
  tox -e py27 --notest
  tox -e py34 --notest
  source .tox/py27/bin/activate.fish
end
