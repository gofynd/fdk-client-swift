

import Foundation
public extension PlatformClient {
    /*
         Model: Documents1
         Used By: Order
     */

    class Documents1: Codable {
        public var cin: Document?

        public var pan: Document

        public var digitalSignature: Document?

        public var gst: Document

        public enum CodingKeys: String, CodingKey {
            case cin

            case pan

            case digitalSignature = "digital_signature"

            case gst
        }

        public init(cin: Document? = nil, digitalSignature: Document? = nil, gst: Document, pan: Document) {
            self.cin = cin

            self.pan = pan

            self.digitalSignature = digitalSignature

            self.gst = gst
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cin = try container.decode(Document.self, forKey: .cin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pan = try container.decode(Document.self, forKey: .pan)

            do {
                digitalSignature = try container.decode(Document.self, forKey: .digitalSignature)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gst = try container.decode(Document.self, forKey: .gst)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cin, forKey: .cin)

            try? container.encodeIfPresent(pan, forKey: .pan)

            try? container.encodeIfPresent(digitalSignature, forKey: .digitalSignature)

            try? container.encodeIfPresent(gst, forKey: .gst)
        }
    }
}
