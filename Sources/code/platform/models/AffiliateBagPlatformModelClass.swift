

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var pdfLinks: MarketPlacePdf?

        public var itemId: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var unitPrice: Double

        public var quantity: Int

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var priceEffective: Double

        public var avlQty: Int

        public var companyId: Int

        public var affiliateStoreId: String

        public var id: String

        public var identifier: [String: Any]

        public var sku: String

        public var hsnCodeId: String

        public var discount: Double

        public var amountPaid: Double

        public var itemSize: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case pdfLinks = "pdf_links"

            case itemId = "item_id"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case unitPrice = "unit_price"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case identifier

            case sku

            case hsnCodeId = "hsn_code_id"

            case discount

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.pdfLinks = pdfLinks

            self.itemId = itemId

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.avlQty = avlQty

            self.companyId = companyId

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.identifier = identifier

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
