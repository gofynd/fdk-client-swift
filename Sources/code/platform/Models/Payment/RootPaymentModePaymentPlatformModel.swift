

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var list: [PaymentModeList]?

        public var addCardEnabled: Bool?

        public var isPayByCardPl: Bool?

        public var aggregatorName: String?

        public var name: String

        public var displayPriority: Int

        public var saveCard: Bool?

        public var displayName: String

        public var anonymousEnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case list

            case addCardEnabled = "add_card_enabled"

            case isPayByCardPl = "is_pay_by_card_pl"

            case aggregatorName = "aggregator_name"

            case name

            case displayPriority = "display_priority"

            case saveCard = "save_card"

            case displayName = "display_name"

            case anonymousEnable = "anonymous_enable"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.list = list

            self.addCardEnabled = addCardEnabled

            self.isPayByCardPl = isPayByCardPl

            self.aggregatorName = aggregatorName

            self.name = name

            self.displayPriority = displayPriority

            self.saveCard = saveCard

            self.displayName = displayName

            self.anonymousEnable = anonymousEnable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var list: [PaymentModeList]?

        public var addCardEnabled: Bool?

        public var isPayByCardPl: Bool?

        public var aggregatorName: String?

        public var name: String

        public var displayPriority: Int

        public var saveCard: Bool?

        public var displayName: String

        public var anonymousEnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case list

            case addCardEnabled = "add_card_enabled"

            case isPayByCardPl = "is_pay_by_card_pl"

            case aggregatorName = "aggregator_name"

            case name

            case displayPriority = "display_priority"

            case saveCard = "save_card"

            case displayName = "display_name"

            case anonymousEnable = "anonymous_enable"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.list = list

            self.addCardEnabled = addCardEnabled

            self.isPayByCardPl = isPayByCardPl

            self.aggregatorName = aggregatorName

            self.name = name

            self.displayPriority = displayPriority

            self.saveCard = saveCard

            self.displayName = displayName

            self.anonymousEnable = anonymousEnable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
        }
    }
}
