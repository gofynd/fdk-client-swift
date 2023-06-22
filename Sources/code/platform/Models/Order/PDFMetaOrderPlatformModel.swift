

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PDFMeta
         Used By: Order
     */

    class PDFMeta: Codable {
        public var mediaUpdates: [ManifestMediaUpdate]?

        public var consent: String?

        public enum CodingKeys: String, CodingKey {
            case mediaUpdates = "media_updates"

            case consent
        }

        public init(consent: String? = nil, mediaUpdates: [ManifestMediaUpdate]? = nil) {
            self.mediaUpdates = mediaUpdates

            self.consent = consent
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mediaUpdates = try container.decode([ManifestMediaUpdate].self, forKey: .mediaUpdates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                consent = try container.decode(String.self, forKey: .consent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mediaUpdates, forKey: .mediaUpdates)

            try? container.encode(consent, forKey: .consent)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PDFMeta
         Used By: Order
     */

    class PDFMeta: Codable {
        public var mediaUpdates: [ManifestMediaUpdate]?

        public var consent: String?

        public enum CodingKeys: String, CodingKey {
            case mediaUpdates = "media_updates"

            case consent
        }

        public init(consent: String? = nil, mediaUpdates: [ManifestMediaUpdate]? = nil) {
            self.mediaUpdates = mediaUpdates

            self.consent = consent
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mediaUpdates = try container.decode([ManifestMediaUpdate].self, forKey: .mediaUpdates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                consent = try container.decode(String.self, forKey: .consent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mediaUpdates, forKey: .mediaUpdates)

            try? container.encode(consent, forKey: .consent)
        }
    }
}
