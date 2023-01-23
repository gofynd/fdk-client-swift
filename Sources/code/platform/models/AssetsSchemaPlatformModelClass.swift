

import Foundation
public extension PlatformClient {
    /*
         Model: AssetsSchema
         Used By: Theme
     */

    class AssetsSchema: Codable {
        public var umdJs: UmdJs?

        public var commonJs: CommonJs?

        public var css: Css?

        public enum CodingKeys: String, CodingKey {
            case umdJs = "umd_js"

            case commonJs = "common_js"

            case css
        }

        public init(commonJs: CommonJs? = nil, css: Css? = nil, umdJs: UmdJs? = nil) {
            self.umdJs = umdJs

            self.commonJs = commonJs

            self.css = css
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                umdJs = try container.decode(UmdJs.self, forKey: .umdJs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                commonJs = try container.decode(CommonJs.self, forKey: .commonJs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                css = try container.decode(Css.self, forKey: .css)

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
