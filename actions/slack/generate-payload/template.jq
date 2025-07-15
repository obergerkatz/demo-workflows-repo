{
  channel: $channel,
  blocks: [
    {
      type: "header",
      text: { type: "plain_text", text: "\($emoji) \($name)", emoji: true }
    },
    {
      type: "context",
      elements: [
        { type: "mrkdwn", text: "*Repository:* `\($repo)` • *Environment:* `\($env)`" }
      ]
    },
    { type: "divider" },
    {
      type: "section",
      fields: [
        { type: "mrkdwn", text: "*Triggered by*\n@\($user)" },
        { type: "mrkdwn", text: "*Tag*\n\($tag)" }
      ]
    },
    {
      type: "section",
      fields: [
        { type: "mrkdwn", text: "*Status*\n\($emoji) \($status | ascii_upcase)" }
      ]
    },
    {
      type: "section",
      fields: [
        { type: "mrkdwn", text: "<\($commit_url)|View Commit>" },
        { type: "mrkdwn", text: "<\($run_url)|View Workflow Logs>" }
      ]
    },
    { type: "divider" },
    {
      type: "context",
      elements: [
        { type: "mrkdwn", text: ":robot_face: Need help? Ask in `/ask-devops-il`" }
      ]
    }
  ]
}
