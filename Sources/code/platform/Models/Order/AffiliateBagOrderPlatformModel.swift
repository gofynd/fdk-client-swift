

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var modifiedOn: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var unitPrice: Double

        public var hsnCodeId: String

        public var discount: Double

        public var priceMarked: Double

        public var storeId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var id: String

        public var sku: String

        public var affiliateStoreId: String

        public var companyId: Int

        public var quantity: Int

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case discount

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case id = "_id"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case quantity

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.id = id

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.quantity = quantity

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var amountPaid: Double

        public var modifiedOn: String

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var unitPrice: Double

        public var hsnCodeId: String

        public var discount: Double

        public var priceMarked: Double

        public var storeId: Int

        public var fyndStoreId: String

        public var avlQty: Int

        public var id: String

        public var sku: String

        public var affiliateStoreId: String

        public var companyId: Int

        public var quantity: Int

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case pdfLinks = "pdf_links"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case identifier

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case hsnCodeId = "hsn_code_id"

            case discount

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case fyndStoreId = "fynd_store_id"

            case avlQty = "avl_qty"

            case id = "_id"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case quantity

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.pdfLinks = pdfLinks

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.hsnCodeId = hsnCodeId

            self.discount = discount

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.fyndStoreId = fyndStoreId

            self.avlQty = avlQty

            self.id = id

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.quantity = quantity

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
