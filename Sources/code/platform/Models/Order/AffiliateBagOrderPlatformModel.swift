

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceEffective: Double

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var companyId: Int

        public var sellerIdentifier: String

        public var storeId: Int

        public var unitPrice: Double

        public var avlQty: Int

        public var fyndStoreId: String

        public var id: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var amountPaid: Double

        public var discount: Double

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case sku

            case amountPaid = "amount_paid"

            case discount

            case identifier

            case modifiedOn = "modified_on"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.amountPaid = amountPaid

            self.discount = discount

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

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
        public var priceEffective: Double

        public var priceMarked: Double

        public var deliveryCharge: Double

        public var itemSize: String

        public var affiliateStoreId: String

        public var transferPrice: Int

        public var companyId: Int

        public var sellerIdentifier: String

        public var storeId: Int

        public var unitPrice: Double

        public var avlQty: Int

        public var fyndStoreId: String

        public var id: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var sku: String

        public var amountPaid: Double

        public var discount: Double

        public var identifier: [String: Any]

        public var modifiedOn: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case quantity

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case sku

            case amountPaid = "amount_paid"

            case discount

            case identifier

            case modifiedOn = "modified_on"

            case itemId = "item_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.sku = sku

            self.amountPaid = amountPaid

            self.discount = discount

            self.identifier = identifier

            self.modifiedOn = modifiedOn

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sku = try container.decode(String.self, forKey: .sku)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
