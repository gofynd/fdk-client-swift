

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var allStatus: [String]

        public var aggregatorPaymentObject: [String: Any]?

        public var refundedBy: String

        public var paymentMode: String

        public var applicationId: String

        public var currentStatus: String

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var amountInPaisa: String

        public var collectedBy: String

        public var currency: String

        public var refundObject: [String: Any]?

        public var userObject: [String: Any]

        public var createdOn: String

        public var id: String

        public var companyId: String

        public var paymentId: String?

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case applicationId = "application_id"

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amountInPaisa = "amount_in_paisa"

            case collectedBy = "collected_by"

            case currency

            case refundObject = "refund_object"

            case userObject = "user_object"

            case createdOn = "created_on"

            case id

            case companyId = "company_id"

            case paymentId = "payment_id"

            case modifiedOn = "modified_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.applicationId = applicationId

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amountInPaisa = amountInPaisa

            self.collectedBy = collectedBy

            self.currency = currency

            self.refundObject = refundObject

            self.userObject = userObject

            self.createdOn = createdOn

            self.id = id

            self.companyId = companyId

            self.paymentId = paymentId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var allStatus: [String]

        public var aggregatorPaymentObject: [String: Any]?

        public var refundedBy: String

        public var paymentMode: String

        public var applicationId: String

        public var currentStatus: String

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var amountInPaisa: String

        public var collectedBy: String

        public var currency: String

        public var refundObject: [String: Any]?

        public var userObject: [String: Any]

        public var createdOn: String

        public var id: String

        public var companyId: String

        public var paymentId: String?

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case allStatus = "all_status"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case refundedBy = "refunded_by"

            case paymentMode = "payment_mode"

            case applicationId = "application_id"

            case currentStatus = "current_status"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amountInPaisa = "amount_in_paisa"

            case collectedBy = "collected_by"

            case currency

            case refundObject = "refund_object"

            case userObject = "user_object"

            case createdOn = "created_on"

            case id

            case companyId = "company_id"

            case paymentId = "payment_id"

            case modifiedOn = "modified_on"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.allStatus = allStatus

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.refundedBy = refundedBy

            self.paymentMode = paymentMode

            self.applicationId = applicationId

            self.currentStatus = currentStatus

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amountInPaisa = amountInPaisa

            self.collectedBy = collectedBy

            self.currency = currency

            self.refundObject = refundObject

            self.userObject = userObject

            self.createdOn = createdOn

            self.id = id

            self.companyId = companyId

            self.paymentId = paymentId

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            id = try container.decode(String.self, forKey: .id)

            companyId = try container.decode(String.self, forKey: .companyId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
