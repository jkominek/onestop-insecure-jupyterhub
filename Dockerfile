FROM jupyterhub/jupyterhub:latest

RUN pip3 install --no-cache install jupyter jupyterhub-firstuseauthenticator

COPY jupyterhub_config.py /srv/jupyterhub

COPY skel/* /etc/skel/

CMD ["jupyterhub"]
