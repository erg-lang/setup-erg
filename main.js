const core = require('@actions/core');
const { execFileSync } = require('child_process');

function main() {
    try {
        const version = core.getInput('version', { required: false });
        const build = core.getInput('build', { required: false });
        core.output('version', version);
        core.output('build', build);

        execFileSync(
            'bash',
            ['--noprofile', '--norc', `${__dirname}/main.sh`, build],
            { stdio: 'inherit' }
        );
    } catch (e) {
        console.log(`::error::${e.message}`);
        process.exit(1);
    }
}

main();
