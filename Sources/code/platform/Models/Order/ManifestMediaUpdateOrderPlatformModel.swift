

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestMediaUpdate
         Used By: Order
     */

    class ManifestMediaUpdate: Codable {
        public var link: String?

        public var code: Int?

        public var mediaType: String?

        public var status: Bool?

        public var file: ManifestFile?

        public var entity: String?

        public enum CodingKeys: String, CodingKey {
            case link

            case code

            case mediaType = "media_type"

            case status

            case file

            case entity
        }

        public init(code: Int? = nil, entity: String? = nil, file: ManifestFile? = nil, link: String? = nil, mediaType: String? = nil, status: Bool? = nil) {
            self.link = link

            self.code = code

            self.mediaType = mediaType

            self.status = status

            self.file = file

            self.entity = entity
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
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mediaType = try container.decode(String.self, forKey: .mediaType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                file = try container.decode(ManifestFile.self, forKey: .file)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entity = try container.decode(String.self, forKey: .entity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(mediaType, forKey: .mediaType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(file, forKey: .file)

            try? container.encodeIfPresent(entity, forKey: .entity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestMediaUpdate
         Used By: Order
     */

    class ManifestMediaUpdate: Codable {
        public var link: String?

        public var code: Int?

        public var mediaType: String?

        public var status: Bool?

        public var file: ManifestFile?

        public var entity: String?

        public enum CodingKeys: String, CodingKey {
            case link

            case code

            case mediaType = "media_type"

            case status

            case file

            case entity
        }

        public init(code: Int? = nil, entity: String? = nil, file: ManifestFile? = nil, link: String? = nil, mediaType: String? = nil, status: Bool? = nil) {
            self.link = link

            self.code = code

            self.mediaType = mediaType

            self.status = status

            self.file = file

            self.entity = entity
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
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mediaType = try container.decode(String.self, forKey: .mediaType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                file = try container.decode(ManifestFile.self, forKey: .file)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                entity = try container.decode(String.self, forKey: .entity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(link, forKey: .link)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(mediaType, forKey: .mediaType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(file, forKey: .file)

            try? container.encodeIfPresent(entity, forKey: .entity)
        }
    }
}
