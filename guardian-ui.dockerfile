FROM fedimintui/guardian-ui:master

ENV PORT=3000 \
    REACT_APP_FM_CONFIG_API=ws://127.0.0.1:8174


RUN node scripts/replace-react-env.js build

CMD ["serve", "-s", "build"]