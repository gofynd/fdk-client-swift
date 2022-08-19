

import Foundation
public extension PlatformClient {
    /*
         Model: Documents1
         Used By: Order
     */

    class Documents1: Codable {
        public var digitalSignature: Document?

        public var cin: Document?

        public var gst: Document

        public var pan: Document

        public enum CodingKeys: String, CodingKey {
            case digitalSignature = "digital_signature"

            case cin

            case gst

            case pan
        }

        public init(cin: Document? = nil, digitalSignature: Document? = nil, gst: Document, pan: Document) {
            self.digitalSignature = digitalSignature

            self.cin = cin

            self.gst = gst

            self.pan = pan
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                digitalSignature = try container.decode(Document.self, forKey: .digitalSignature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cin = try container.decode(Document.self, forKey: .cin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gst = try container.decode(Document.self, forKey: .gst)

            pan = try container.decode(Document.self, forKey: .pan)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(digitalSignature, forKey: .digitalSignature)

            try? container.encodeIfPresent(cin, forKey: .cin)

            try? container.encodeIfPresent(gst, forKey: .gst)

            try? container.encodeIfPresent(pan, forKey: .pan)
        }
    }
}
