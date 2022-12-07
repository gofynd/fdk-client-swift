

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var storeId: Int

        public var sku: String

        public var fyndStoreId: String

        public var companyId: Int

        public var itemSize: String

        public var deliveryCharge: Double

        public var hsnCodeId: String

        public var discount: Double

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var priceMarked: Double

        public var avlQty: Int

        public var id: String

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case quantity

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case sku

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case hsnCodeId = "hsn_code_id"

            case discount

            case identifier

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
