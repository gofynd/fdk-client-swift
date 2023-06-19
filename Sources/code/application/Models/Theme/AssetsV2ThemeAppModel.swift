

import Foundation
public extension ApplicationClient.Theme {
    /*
         Model: AssetsV2
         Used By: Theme
     */
    class AssetsV2: Codable {
        public var umdJs: UMDJs?

        public var commonJs: CommonJS?

        public var css: CSS?

        public enum CodingKeys: String, CodingKey {
            case umdJs = "umd_js"

            case commonJs = "common_js"

            case css
        }

        public init(commonJs: CommonJS? = nil, css: CSS? = nil, umdJs: UMDJs? = nil) {
            self.umdJs = umdJs

            self.commonJs = commonJs

            self.css = css
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                umdJs = try container.decode(UMDJs.self, forKey: .umdJs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                commonJs = try container.decode(CommonJS.self, forKey: .commonJs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                css = try container.decode(CSS.self, forKey: .css)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(umdJs, forKey: .umdJs)

            try? container.encodeIfPresent(commonJs, forKey: .commonJs)

            try? container.encodeIfPresent(css, forKey: .css)
        }
    }
}
