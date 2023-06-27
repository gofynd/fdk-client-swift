

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var name: String

        public var addCardEnabled: Bool?

        public var list: [PaymentModeList]?

        public var isPayByCardPl: Bool?

        public var anonymousEnable: Bool?

        public var saveCard: Bool?

        public var displayPriority: Int

        public var displayName: String

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case addCardEnabled = "add_card_enabled"

            case list

            case isPayByCardPl = "is_pay_by_card_pl"

            case anonymousEnable = "anonymous_enable"

            case saveCard = "save_card"

            case displayPriority = "display_priority"

            case displayName = "display_name"

            case aggregatorName = "aggregator_name"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.name = name

            self.addCardEnabled = addCardEnabled

            self.list = list

            self.isPayByCardPl = isPayByCardPl

            self.anonymousEnable = anonymousEnable

            self.saveCard = saveCard

            self.displayPriority = displayPriority

            self.displayName = displayName

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

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
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(aggregatorName, forKey: .aggregatorName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var name: String

        public var addCardEnabled: Bool?

        public var list: [PaymentModeList]?

        public var isPayByCardPl: Bool?

        public var anonymousEnable: Bool?

        public var saveCard: Bool?

        public var displayPriority: Int

        public var displayName: String

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case addCardEnabled = "add_card_enabled"

            case list

            case isPayByCardPl = "is_pay_by_card_pl"

            case anonymousEnable = "anonymous_enable"

            case saveCard = "save_card"

            case displayPriority = "display_priority"

            case displayName = "display_name"

            case aggregatorName = "aggregator_name"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.name = name

            self.addCardEnabled = addCardEnabled

            self.list = list

            self.isPayByCardPl = isPayByCardPl

            self.anonymousEnable = anonymousEnable

            self.saveCard = saveCard

            self.displayPriority = displayPriority

            self.displayName = displayName

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

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
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(aggregatorName, forKey: .aggregatorName)
        }
    }
}
