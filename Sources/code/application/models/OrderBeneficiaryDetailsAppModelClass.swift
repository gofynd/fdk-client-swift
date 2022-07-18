

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var accountHolder: String

        public var subtitle: String

        public var id: Int

        public var isActive: Bool

        public var comment: Bool?

        public var branchName: Bool?

        public var title: String

        public var address: String

        public var createdOn: String

        public var mobile: Bool?

        public var delightsUserName: String?

        public var displayName: String

        public var ifscCode: String

        public var email: String

        public var accountNo: String

        public var transferMode: String

        public var modifiedOn: String

        public var beneficiaryId: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case subtitle

            case id

            case isActive = "is_active"

            case comment

            case branchName = "branch_name"

            case title

            case address

            case createdOn = "created_on"

            case mobile

            case delightsUserName = "delights_user_name"

            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case email

            case accountNo = "account_no"

            case transferMode = "transfer_mode"

            case modifiedOn = "modified_on"

            case beneficiaryId = "beneficiary_id"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountHolder = accountHolder

            self.subtitle = subtitle

            self.id = id

            self.isActive = isActive

            self.comment = comment

            self.branchName = branchName

            self.title = title

            self.address = address

            self.createdOn = createdOn

            self.mobile = mobile

            self.delightsUserName = delightsUserName

            self.displayName = displayName

            self.ifscCode = ifscCode

            self.email = email

            self.accountNo = accountNo

            self.transferMode = transferMode

            self.modifiedOn = modifiedOn

            self.beneficiaryId = beneficiaryId

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            id = try container.decode(Int.self, forKey: .id)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            address = try container.decode(String.self, forKey: .address)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
