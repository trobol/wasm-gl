
function load(path) {
	return new Promise((resolve, reject) => {
		let s = path.split('.'),
			extention = s[s.length - 1],
			handlers = {
				vert(r) {
					return r.text();
				},
				frag(r) {
					return r.text();
				}

			};

		fetch(path)
			.then(response => handlers[extention](response), reject)
			.then(result => resolve(result));
	});
}

