FROM fedimintui/guardian-ui:master

ARG REACT_APP_FM_CONFIG_API=ws://127.0.0.1:8174

ENV PORT=3000 \
    REACT_APP_FM_CONFIG_API=$REACT_APP_FM_CONFIG_API


RUN node scripts/replace-react-env.js build

CMD ["serve", "-s", "build"]