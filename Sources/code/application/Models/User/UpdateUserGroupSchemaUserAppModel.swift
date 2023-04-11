

import Foundation
public extension ApplicationClient.User {
    /*
         Model: UpdateUserGroupSchema
         Used By: User
     */
    class UpdateUserGroupSchema: Codable {
        public var name: String?

        public var description: String?

        public var fileUrl: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case fileUrl = "file_url"
        }

        public init(description: String? = nil, fileUrl: String? = nil, name: String? = nil) {
            self.name = name

            self.description = description

            self.fileUrl = fileUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fileUrl = try container.decode(String.self, forKey: .fileUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
        }
    }
}
