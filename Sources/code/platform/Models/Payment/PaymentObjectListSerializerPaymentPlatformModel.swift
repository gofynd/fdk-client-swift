

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundedBy: String

        public var paymentGateway: String

        public var id: String

        public var paymentId: String?

        public var companyId: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var applicationId: String

        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var currency: String

        public var createdOn: String

        public var collectedBy: String

        public var allStatus: [String]

        public var currentStatus: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case refundedBy = "refunded_by"

            case paymentGateway = "payment_gateway"

            case id

            case paymentId = "payment_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case applicationId = "application_id"

            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case createdOn = "created_on"

            case collectedBy = "collected_by"

            case allStatus = "all_status"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundedBy = refundedBy

            self.paymentGateway = paymentGateway

            self.id = id

            self.paymentId = paymentId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.applicationId = applicationId

            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.createdOn = createdOn

            self.collectedBy = collectedBy

            self.allStatus = allStatus

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var refundedBy: String

        public var paymentGateway: String

        public var id: String

        public var paymentId: String?

        public var companyId: String

        public var modifiedOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var applicationId: String

        public var userObject: [String: Any]

        public var paymentModeIdentifier: String

        public var currency: String

        public var createdOn: String

        public var collectedBy: String

        public var allStatus: [String]

        public var currentStatus: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case refundedBy = "refunded_by"

            case paymentGateway = "payment_gateway"

            case id

            case paymentId = "payment_id"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case applicationId = "application_id"

            case userObject = "user_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case currency

            case createdOn = "created_on"

            case collectedBy = "collected_by"

            case allStatus = "all_status"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.refundedBy = refundedBy

            self.paymentGateway = paymentGateway

            self.id = id

            self.paymentId = paymentId

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.applicationId = applicationId

            self.userObject = userObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.currency = currency

            self.createdOn = createdOn

            self.collectedBy = collectedBy

            self.allStatus = allStatus

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(String.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

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

            applicationId = try container.decode(String.self, forKey: .applicationId)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            currency = try container.decode(String.self, forKey: .currency)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
