

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DateMeta
         Used By: Catalog
     */

    class DateMeta: Codable {
        public var modifiedOn: String?

        public var addedOnStore: String?

        public var createdOn: String?

        public var inventoryUpdatedOn: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case addedOnStore = "added_on_store"

            case createdOn = "created_on"

            case inventoryUpdatedOn = "inventory_updated_on"
        }

        public init(addedOnStore: String? = nil, createdOn: String? = nil, inventoryUpdatedOn: String? = nil, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.addedOnStore = addedOnStore

            self.createdOn = createdOn

            self.inventoryUpdatedOn = inventoryUpdatedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DateMeta
         Used By: Catalog
     */

    class DateMeta: Codable {
        public var modifiedOn: String?

        public var addedOnStore: String?

        public var createdOn: String?

        public var inventoryUpdatedOn: String?

        public enum CodingKeys: String, CodingKey {
            case modifiedOn = "modified_on"

            case addedOnStore = "added_on_store"

            case createdOn = "created_on"

            case inventoryUpdatedOn = "inventory_updated_on"
        }

        public init(addedOnStore: String? = nil, createdOn: String? = nil, inventoryUpdatedOn: String? = nil, modifiedOn: String? = nil) {
            self.modifiedOn = modifiedOn

            self.addedOnStore = addedOnStore

            self.createdOn = createdOn

            self.inventoryUpdatedOn = inventoryUpdatedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addedOnStore = try container.decode(String.self, forKey: .addedOnStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(addedOnStore, forKey: .addedOnStore)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)
        }
    }
}
