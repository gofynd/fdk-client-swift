

import Foundation
public extension ApplicationClient {
    /*
         Model: QRCodeResp
         Used By: Share
     */
    class QRCodeResp: Codable {
        public var link: String?

        public var svg: String?

        public enum CodingKeys: String, CodingKey {
            case link

            case svg
        }

        public init(link: String? = nil, svg: String? = nil) {
            self.link = link

            self.svg = svg
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                link = try container.decode(String.self, forKey: .link)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                svg = try container.decode(String.self, forKey: .svg)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)

            try? container.encodeIfPresent(svg, forKey: .svg)
        }
    }
}
