

import Foundation
public extension ApplicationClient {
    /*
         Model: TicketContent
         Used By: Lead
     */
    class TicketContent: Codable {
        public var title: String

        public var description: String?

        public var attachments: [TicketAsset]?

        public enum CodingKeys: String, CodingKey {
            case title

            case description

            case attachments
        }

        public init(attachments: [TicketAsset]? = nil, description: String? = nil, title: String) {
            self.title = title

            self.description = description

            self.attachments = attachments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            do {
                description = try container.decode(String.self, forKey: .description)

                if let strong_description = description,
                   let descriptionData = Data(base64Encoded: strong_description)
                {
                    description = String(data: descriptionData, encoding: .utf8) ?? description
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attachments = try container.decode([TicketAsset].self, forKey: .attachments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(description?.asBase64, forKey: .description)

            try? container.encodeIfPresent(attachments, forKey: .attachments)
        }
    }
}
