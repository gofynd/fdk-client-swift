

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var id: String

        public var priceEffective: Double

        public var sku: String

        public var companyId: Int

        public var priceMarked: Double

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var sellerIdentifier: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var itemId: Int

        public var affiliateStoreId: String

        public var quantity: Int

        public var discount: Double

        public var modifiedOn: String

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var unitPrice: Double

        public var avlQty: Int

        public var fyndStoreId: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case id = "_id"

            case priceEffective = "price_effective"

            case sku

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case sellerIdentifier = "seller_identifier"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case discount

            case modifiedOn = "modified_on"

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.id = id

            self.priceEffective = priceEffective

            self.sku = sku

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.sellerIdentifier = sellerIdentifier

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
