

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentMode: String

        public var currentStatus: String

        public var companyId: String

        public var allStatus: [String]

        public var createdOn: String

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public var id: String

        public var paymentModeIdentifier: String

        public var modifiedOn: String

        public var refundedBy: String

        public var paymentId: String?

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var userObject: [String: Any]

        public var applicationId: String

        public var collectedBy: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case allStatus = "all_status"

            case createdOn = "created_on"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case modifiedOn = "modified_on"

            case refundedBy = "refunded_by"

            case paymentId = "payment_id"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case currency

            case userObject = "user_object"

            case applicationId = "application_id"

            case collectedBy = "collected_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentMode = paymentMode

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.allStatus = allStatus

            self.createdOn = createdOn

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.modifiedOn = modifiedOn

            self.refundedBy = refundedBy

            self.paymentId = paymentId

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.currency = currency

            self.userObject = userObject

            self.applicationId = applicationId

            self.collectedBy = collectedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentMode: String

        public var currentStatus: String

        public var companyId: String

        public var allStatus: [String]

        public var createdOn: String

        public var paymentGateway: String

        public var aggregatorPaymentObject: [String: Any]?

        public var id: String

        public var paymentModeIdentifier: String

        public var modifiedOn: String

        public var refundedBy: String

        public var paymentId: String?

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var userObject: [String: Any]

        public var applicationId: String

        public var collectedBy: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case allStatus = "all_status"

            case createdOn = "created_on"

            case paymentGateway = "payment_gateway"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case id

            case paymentModeIdentifier = "payment_mode_identifier"

            case modifiedOn = "modified_on"

            case refundedBy = "refunded_by"

            case paymentId = "payment_id"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case currency

            case userObject = "user_object"

            case applicationId = "application_id"

            case collectedBy = "collected_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentMode = paymentMode

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.allStatus = allStatus

            self.createdOn = createdOn

            self.paymentGateway = paymentGateway

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.id = id

            self.paymentModeIdentifier = paymentModeIdentifier

            self.modifiedOn = modifiedOn

            self.refundedBy = refundedBy

            self.paymentId = paymentId

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.currency = currency

            self.userObject = userObject

            self.applicationId = applicationId

            self.collectedBy = collectedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)
        }
    }
}
