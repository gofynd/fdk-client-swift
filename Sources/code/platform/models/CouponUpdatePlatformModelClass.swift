

import Foundation
public extension PlatformClient {
    /*
         Model: CouponUpdate
         Used By: Cart
     */

    class CouponUpdate: Codable {
        public var typeSlug: String

        public var rule: [Rule]

        public var state: State?

        public var tags: [String]?

        public var action: CouponAction?

        public var code: String

        public var validation: Validation?

        public var displayMeta: DisplayMeta

        public var schedule: CouponSchedule?

        public var restrictions: Restrictions?

        public var dateMeta: CouponDateMeta?

        public var identifiers: Identifier

        public var author: CouponAuthor?

        public var ruleDefinition: RuleDefinition

        public var ownership: Ownership

        public var validity: Validity

        public enum CodingKeys: String, CodingKey {
            case typeSlug = "type_slug"

            case rule

            case state

            case tags

            case action

            case code

            case validation

            case displayMeta = "display_meta"

            case schedule = "_schedule"

            case restrictions

            case dateMeta = "date_meta"

            case identifiers

            case author

            case ruleDefinition = "rule_definition"

            case ownership

            case validity
        }

        public init(action: CouponAction? = nil, author: CouponAuthor? = nil, code: String, dateMeta: CouponDateMeta? = nil, displayMeta: DisplayMeta, identifiers: Identifier, ownership: Ownership, restrictions: Restrictions? = nil, rule: [Rule], ruleDefinition: RuleDefinition, state: State? = nil, tags: [String]? = nil, typeSlug: String, validation: Validation? = nil, validity: Validity, schedule: CouponSchedule? = nil) {
            self.typeSlug = typeSlug

            self.rule = rule

            self.state = state

            self.tags = tags

            self.action = action

            self.code = code

            self.validation = validation

            self.displayMeta = displayMeta

            self.schedule = schedule

            self.restrictions = restrictions

            self.dateMeta = dateMeta

            self.identifiers = identifiers

            self.author = author

            self.ruleDefinition = ruleDefinition

            self.ownership = ownership

            self.validity = validity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            typeSlug = try container.decode(String.self, forKey: .typeSlug)

            rule = try container.decode([Rule].self, forKey: .rule)

            do {
                state = try container.decode(State.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(CouponAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                validation = try container.decode(Validation.self, forKey: .validation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayMeta = try container.decode(DisplayMeta.self, forKey: .displayMeta)

            do {
                schedule = try container.decode(CouponSchedule.self, forKey: .schedule)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                restrictions = try container.decode(Restrictions.self, forKey: .restrictions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dateMeta = try container.decode(CouponDateMeta.self, forKey: .dateMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                author = try container.decode(CouponAuthor.self, forKey: .author)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ruleDefinition = try container.decode(RuleDefinition.self, forKey: .ruleDefinition)

            ownership = try container.decode(Ownership.self, forKey: .ownership)

            validity = try container.decode(Validity.self, forKey: .validity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(typeSlug, forKey: .typeSlug)

            try? container.encodeIfPresent(rule, forKey: .rule)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(validation, forKey: .validation)

            try? container.encodeIfPresent(displayMeta, forKey: .displayMeta)

            try? container.encodeIfPresent(schedule, forKey: .schedule)

            try? container.encodeIfPresent(restrictions, forKey: .restrictions)

            try? container.encodeIfPresent(dateMeta, forKey: .dateMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(author, forKey: .author)

            try? container.encodeIfPresent(ruleDefinition, forKey: .ruleDefinition)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(validity, forKey: .validity)
        }
    }
}
